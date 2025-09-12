COMMENT =		Unicode emoji data files

V =			17.0.0
UNICODE_DATA_NAME =	emoji

SITES =			${UNICODE_SITES}/${V}/emoji/

DISTFILES =		emoji-sequences.txt \
			emoji-test.txt \
			emoji-zwj-sequences.txt

EXTRACT_ONLY =		# empty

RUN_DEPENDS =		textproc/unicode/ucd

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/unicode/emoji/
	${INSTALL_DATA} ${FULLDISTDIR}/*.txt ${PREFIX}/share/unicode/emoji/

.include <bsd.port.mk>
