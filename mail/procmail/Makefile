# $OpenBSD: Makefile,v 1.44 2019/07/12 20:47:36 sthen Exp $

COMMENT=	filtering local mail delivery agent

DISTNAME=	procmail-3.22
CATEGORIES=	mail
REVISION=	8

MASTER_SITES=	${HOMEPAGE} \
		http://mirror.switch.ch/ftp/mirror/procmail/ \
		http://ftp.kfki.hu/packages/mail/procmail/ \
		http://ftp.ucsb.edu/pub/mirrors/procmail/ \
		http://www.ring.gr.jp/archives/net/mail/procmail/ \
		ftp://ftp.informatik.rwth-aachen.de/pub/packages/procmail/ \
		ftp://ftp.fu-berlin.de/pub/unix/mail/procmail/

HOMEPAGE=	http://www.procmail.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=		c m

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
