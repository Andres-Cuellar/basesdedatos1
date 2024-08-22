select
    `c`.`id` AS `cliente_id`,
    concat(
        `c`.`primer_nombre`,
        ' ',
        `c`.`segundo_nombre`,
        ' ',
        `c`.`primer_apellido`,
        ' ',
        `c`.`segundo_apellido`
    ) AS `nombre_completo`,
    `c`.`documento` AS `documento`,
    `c`.`telefono` AS `telefono`,
    `c`.`correo` AS `correo`,
    `tc`.`nombre` AS `tipo_cliente`,
    `u`.`direccion_calle` AS `direccion_calle`,
    `u`.`direccion_numero` AS `direccion_numero`,
    `u`.`direccion_detalle` AS `direccion_detalle`,
    `b`.`nombre` AS `barrio`
from
    (
        (
            (
                `uninnca_tienda_db`.`cliente` `c`
                join `uninnca_tienda_db`.`tipo_cliente` `tc` on(`c`.`tipo_cliente` = `tc`.`id`)
            )
            join `uninnca_tienda_db`.`ubicacion` `u` on(`c`.`ubicacion` = `u`.`id`)
        )
        join `uninnca_tienda_db`.`barrio` `b` on(`u`.`barrio` = `b`.`id`)
    )