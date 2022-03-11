COMMENT =	service monitoring daemon

DISTNAME = 	mon-${V}
REVISION =	11

WANTLIB = 	c

RUN_DEPENDS =	devel/p5-Time-Period

NO_TEST = 	Yes

EG_DIR = 	${PREFIX}/share/examples/mon/

post-configure:
	${SUBST_CMD} ${WRKSRC}/etc/example.cf ${WRKSRC}/etc/very-simple.cf \
	${WRKSRC}/mon.d/Makefile ${WRKSRC}/mon.d/fping.monitor

do-build:
	@cd ${WRKSRC}/mon.d && env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/mon ${PREFIX}/bin/mon
	${INSTALL_MAN} ${WRKSRC}/doc/mon.8 ${PREFIX}/man/man8/
	${INSTALL_DATA_DIR} ${PREFIX}/lib/mon
	${INSTALL_DATA_DIR} ${PREFIX}/lib/mon/{mon.d,alert.d}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mon/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mon/
	${INSTALL_DATA} ${WRKSRC}/etc/snmpvar.def ${EG_DIR}
	${INSTALL_DATA} ${WRKSRC}/etc/syslog-monitor.conf ${EG_DIR}
	${INSTALL_DATA} ${WRKSRC}/etc/*.cf ${EG_DIR}
	${INSTALL_DATA} ${WRKSRC}/doc/README.* ${PREFIX}/share/doc/mon/
	${INSTALL_SCRIPT} ${WRKSRC}/mon.d/*.monitor ${PREFIX}/lib/mon/mon.d/
	${INSTALL_SCRIPT} ${WRKSRC}/alert.d/*.alert ${PREFIX}/lib/mon/alert.d/
	@cd ${WRKSRC}/mon.d && env -i ${MAKE_ENV} \
		${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} -f ${MAKE_FILE} ${FAKE_TARGET}


.include <bsd.port.mk>
