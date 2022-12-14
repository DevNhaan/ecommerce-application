package dev.ecommerce.backend.role.dto;

import java.util.Set;
import java.util.UUID;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

@Setter
@Getter
@NoArgsConstructor
@SuperBuilder
public class EGroupWithRolesDTO {
	private UUID id;
	private String name;
	private String description;
	private Set<ERoleDTO> roles;
}
