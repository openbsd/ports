# $OpenBSD: Makefile,v 1.4 1999/02/21 04:26:15 marc Exp $
#

DISTNAME= rsync-2.2.1
CATEGORIES=net

NEED_VERSION=		1.64

MAINTAINER=		espie@openbsd.org

# to set
MASTER_SITES=		ftp://rsync.samba.org/pub/rsync/

GNU_CONFIGURE=		yes

.if !defined(NO_SHARED_LIBS)
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
