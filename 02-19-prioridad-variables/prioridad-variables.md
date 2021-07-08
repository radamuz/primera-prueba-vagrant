# Prioridad variables

## El orden (de menor a mayor) prioridad es el siguiente:
* "Defaults" definidas en un rol.
* Variables de grupo (inventario -> group_vars -> group_vars/\<grupos\>)
* Variables de servidor (inventario -> host_vars/\<servidor\>)
* "Facts" del servidor.
* Variables del play (-> vars_prompt -> vars_files)
* Variables del role (definidas en /roles/**rol**/vars/_main.yml_)
* Variables de bloque -> variables de tareas
* Parámetros role -> include_params -> include_vars
* Set_facts / registered_vars
* extra vars ah-hoc con -e