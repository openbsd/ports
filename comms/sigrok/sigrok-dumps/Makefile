COMMENT =		example signal/protocol dumps for sigrok

SIGROK_PROJECT =	sigrok-dumps
SIGROK_VERSION =	0.1.0
REVISION =		0

CONFIGURE_STYLE =

NO_BUILD =		Yes
NO_TEST =		Yes

WRKSRC =		${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sigrok
.for dir in dcf77 i2c i2s jtag mouse_sensors spi uart usb
	cp -R ${WRKSRC}/${dir} ${PREFIX}/share/examples/sigrok/
	chmod -R +r ${PREFIX}/share/examples/sigrok/${dir}
.endfor

.include <bsd.port.mk>
