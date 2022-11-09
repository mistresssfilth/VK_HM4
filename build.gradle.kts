plugins {
    id("java")
}

group = "ru.vk.mistressfilth"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}

dependencies {
    implementation("org.flywaydb:flyway-core:9.6.0")
    implementation("org.postgresql:postgresql:42.5.0")
    implementation("org.jetbrains:annotations:13.0")
}

tasks.getByName<Test>("test") {
    useJUnitPlatform()
}