# $OpenBSD: Makefile,v 1.2 1998/11/26 19:41:21 espie Exp $
# Version required: 2.2.0
# Date created: 3 nov 98
# Whom: Marc Espie (espie@openbsd.org)
#


DISTNAME= rsync-2.2.1
CATEGORIES=net

MAINTAINER=		espie@openbsd.org

# to set
MASTER_SITES=		ftp://rsync.samba.org/pub/rsync/

GNU_CONFIGURE=		yes

.if (${MACHINE_ARCH} != "alpha")
CONFIGURE_ARGS+=	--enable-shared
.endif

# not MESSAGE, explains the build warning
post-build:
	@echo "this use of mktemp is actually correct"

DOCDIR=${PREFIX}/share/doc/rsync

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rsync ${PREFIX}/bin
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN_DIR} ${PREFIX}/man/man5
	${INSTALL_MAN} ${WRKSRC}/rsync.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/rsyncd.conf.5 ${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/tech_report.tex ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/test.sh ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/rsyncstats ${DOCDIR}

.include <bsd.port.mk>
