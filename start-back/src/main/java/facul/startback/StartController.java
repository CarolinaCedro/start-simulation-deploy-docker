package facul.startback;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;

@RestController
@RequestMapping("/api/start")
@CrossOrigin(origins = "*", methods = {RequestMethod.GET, RequestMethod.POST, RequestMethod.PUT, RequestMethod.DELETE})
public class StartController {

    private List<Task> tasks;

    public StartController() {
        tasks = Arrays.asList(
                new Task("Fazer compras"),
                new Task("Ligar para o cliente"),
                new Task("Enviar relatório"),
                new Task("Reunião com equipe"),
                new Task("Estudar para o exame"),
                new Task("Preparar apresentação"),
                new Task("Resolver problemas no código"),
                new Task("Atualizar documentação"),
                new Task("Fazer exercícios físicos"),
                new Task("Assistir a série")
        );
    }

    @GetMapping
    @ResponseStatus(HttpStatus.OK)
    public List<Task> getTasks() {
        return tasks;
    }
}
