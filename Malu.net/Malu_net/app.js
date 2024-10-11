// Clase Producto con nombre y creador
class Producto {
    constructor(nombre, creador) {
        this.nombre = nombre;
        this.creador = creador; // Añadimos el creador
        this.fecha = new Date(); // Mantenemos la fecha si la necesitas
    }

    mostrarCreador() {
        return this.creador;
    }
}

// Cargar productos desde localStorage
const cargarProductos = () => {
    const productosGuardados = JSON.parse(localStorage.getItem('productos')) || [];
    return productosGuardados.map(prod => new Producto(prod.nombre, prod.creador));
};

// Almacenar productos en localStorage
const almacenarProductos = (productos) => {
    localStorage.setItem('productos', JSON.stringify(productos));
};

// Mostrar productos en la lista
const mostrarProductos = (productos) => {
    const lista = document.getElementById('listaCompras');
    lista.innerHTML = ''; // Limpiar la lista antes de volver a mostrar los productos

    productos.forEach((producto, index) => {
        const li = document.createElement('li');
        li.innerText = `${producto.nombre} (Creador: ${producto.mostrarCreador()})`; // Mostrar el creador

        const btnEliminar = document.createElement('button');
        btnEliminar.innerText = 'Eliminar';
        btnEliminar.addEventListener('click', () => {
            productos.splice(index, 1); // Eliminar producto
            almacenarProductos(productos); // Actualizar almacenamiento
            mostrarProductos(productos); // Volver a mostrar productos
        });

        li.appendChild(btnEliminar);
        lista.appendChild(li);
    });
};

// Agregar nuevo producto
const agregarProducto = () => {
    const inputProducto = document.getElementById('nuevoElemento');
    const inputCreador = document.getElementById('nuevoCreador'); // Añadir el campo para el creador
    const nombre = inputProducto.value.trim();
    const creador = inputCreador.value.trim();

    // Validación de producto y creador
    if (nombre === '' || creador === '') {
        alert('Por favor, ingresa un producto y su creador.');
        return;
    }

    const productos = cargarProductos();
    const nuevoProducto = new Producto(nombre, creador); // Crear el nuevo producto con nombre y creador
    productos.push(nuevoProducto);
    almacenarProductos(productos);
    mostrarProductos(productos);

    inputProducto.value = ''; // Limpiar input de producto
    inputCreador.value = '';  // Limpiar input del creador
};

// Evento para agregar el producto al hacer clic en el botón
document.getElementById('agregarElemento').addEventListener('click', agregarProducto);

// Cargar productos al iniciar la página
document.addEventListener('DOMContentLoaded', () => {
    const productos = cargarProductos();
    mostrarProductos(productos);
});

// Temporizador para mostrar un mensaje de bienvenida
setTimeout(() => {
    alert('¡Bienvenido, ingrese a una comunidad.');
}, 2000);
