plugins {
    id("java")
}

group = "ru.vk.mistressfilth"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}

dependencies {
    implementation("org.postgresql:postgresql:42.5.0")
    implementation("org.flywaydb:flyway-core:9.6.0")
}

tasks.getByName<Test>("test") {
    useJUnitPlatform()
}