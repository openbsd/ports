COMMENT=	filtering local mail delivery agent

GH_ACCOUNT=	BuGlessRB
GH_PROJECT=	procmail
GH_TAGNAME=	v3.24

CATEGORIES=	mail

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	c m

FLAVORS=	lmtp
FLAVOR?=

.if ${FLAVOR:Mlmtp}
CFLAGS+=	-DLMTP
.endif

RUN_DEPENDS=	sysutils/lockfile
MAKE_FLAGS=	BASENAME="${PREFIX}" CC="${CC}" CFLAGS0="${CFLAGS}" LOCKINGTEST="110"

NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/procmail
	cd ${WRKBUILD}/new && \
	${INSTALL_PROGRAM} formail procmail ${PREFIX}/bin && \
	${INSTALL_SCRIPT} mailstat ${PREFIX}/bin && \
	${INSTALL_MAN} formail.1 procmail.1 ${PREFIX}/man/man1 && \
	${INSTALL_MAN} procmailex.5 procmailrc.5 procmailsc.5 ${PREFIX}/man/man5
	${INSTALL_DATA} ${WRKSRC}/examples/* \
		${PREFIX}/share/examples/procmail

.include <bsd.port.mk>
