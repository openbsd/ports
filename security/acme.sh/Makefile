COMMENT =		pure Unix shell script implementing ACME client protocol

DIST_TUPLE +=		github acmesh-official acme.sh 3.0.9 .

CATEGORIES =		security

MAINTAINER =		Kirill A. Korinsky <kirill@korins.ky>

# GPLv3+
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		devel/libidn \
			net/curl \
			net/socat

NO_BUILD =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/acme.sh
	${INSTALL_SCRIPT} ${WRKSRC}/acme.sh ${PREFIX}/share/acme.sh/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/acme.sh
.for f in LICENSE.md README.md
	${INSTALL_DATA} ${WRKSRC}/${f} ${PREFIX}/share/doc/acme.sh/
.endfor
.for d in deploy dnsapi notify
	${INSTALL_DATA_DIR} ${PREFIX}/share/acme.sh/${d}
	${INSTALL_SCRIPT} ${WRKSRC}/${d}/*.sh ${PREFIX}/share/acme.sh/${d}/
.endfor
	@ln -sf ${TRUEPREFIX}/share/acme.sh/acme.sh ${PREFIX}/bin/acme.sh

# syntax check all scripts
do-test:
	@find ${WRKSRC} -type f -name \*.sh -exec sh -n {} \;

.include <bsd.port.mk>
