COMMENT =		Unicode Character Database (UCD)

# XXX make sure the major(.minor) $V of this port matches x11/gnome/gucharmap
V =			15.1.0
REVISION =		0
UNICODE_DATA_NAME =	ucd

SITES =			${UNICODE_SITES}/zipped/${V}/
DISTFILES =		UCD${EXTRACT_SUFX} \
			Unihan${EXTRACT_SUFX}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/unicode/ucd/{auxiliary,emoji,extracted}/
	${INSTALL_DATA} ${WRKSRC}/*.{txt,html,pdf} ${PREFIX}/share/unicode/ucd/
	${INSTALL_DATA} ${WRKSRC}/auxiliary/* ${PREFIX}/share/unicode/ucd/auxiliary/
	${INSTALL_DATA} ${WRKSRC}/emoji/* ${PREFIX}/share/unicode/ucd/emoji/
	${INSTALL_DATA} ${WRKSRC}/extracted/* ${PREFIX}/share/unicode/ucd/extracted/
	# Copy over the original Unihan zipfile as required by gucharmap
	${INSTALL_DATA} ${FULLDISTDIR}/Unihan${EXTRACT_SUFX} \
		${PREFIX}/share/unicode/ucd

.include <bsd.port.mk>
