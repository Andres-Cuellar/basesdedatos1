select
    `v`.`id` AS `numero_factura`,
    `v`.`fecha` AS `fecha_venta`,
    concat(
        `c`.`primer_nombre`,
        ' ',
        `c`.`segundo_nombre`,
        ' ',
        `c`.`primer_apellido`,
        ' ',
        `c`.`segundo_apellido`
    ) AS `cliente`,
    `c`.`documento` AS `documento_cliente`,
    `c`.`telefono` AS `telefono_cliente`,
    `c`.`correo` AS `correo_cliente`,
    `t`.`nombre` AS `nombre_tienda`,
    `t`.`telefono` AS `telefono_tienda`,
    `u`.`direccion_calle` AS `direccion_calle`,
    `u`.`direccion_numero` AS `direccion_numero`,
    `u`.`direccion_detalle` AS `direccion_detalle`,
    `b`.`nombre` AS `barrio`,
    `v`.`subtotal` AS `subtotal`,
    `v`.`total_impuesto` AS `total_impuesto`,
    `v`.`total` AS `total`
from
    (
        (
            (
                (
                    `uninnca_tienda_db`.`venta` `v`
                    join `uninnca_tienda_db`.`cliente` `c` on(`v`.`cliente` = `c`.`id`)
                )
                join `uninnca_tienda_db`.`tienda` `t` on(`v`.`tienda` = `t`.`id`)
            )
            join `uninnca_tienda_db`.`ubicacion` `u` on(`t`.`ubicacion` = `u`.`id`)
        )
        join `uninnca_tienda_db`.`barrio` `b` on(`u`.`barrio` = `b`.`id`)
    )