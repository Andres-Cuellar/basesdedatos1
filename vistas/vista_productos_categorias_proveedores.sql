select
    `p`.`id` AS `producto_id`,
    `p`.`nombre` AS `nombre_producto`,
    `p`.`descripcion` AS `descripcion`,
    `p`.`precio` AS `precio`,
    `p`.`impuesto` AS `impuesto`,
    `c`.`nombre` AS `categoria`,
    `pr`.`primer_nombre` AS `nombre_proveedor`,
    `pr`.`primer_apellido` AS `apellido_proveedor`
from
    (
        (
            `uninnca_tienda_db`.`producto` `p`
            join `uninnca_tienda_db`.`categoria` `c` on(`p`.`categoria` = `c`.`id`)
        )
        join `uninnca_tienda_db`.`proveedor` `pr` on(`p`.`proveedor` = `pr`.`id`)
    )