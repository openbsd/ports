# $OpenBSD: Makefile,v 1.4 2000/02/12 08:02:32 turan Exp $

DISTNAME=	texi2html
PKGNAME=	texi2html-1.52
CATEGORIES=	textproc
MASTER_SITES=	http://wwwcn.cern.ch/dci/texi2html/ \
		ftp://ftp.scc.ru/pub/unix/
NEED_VERSION=	1.191
EXTRACT_SUFX=	.shar.Z

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

WRKDIST=	${WRKDIR}
EXTRACT_CMD=	gzcat
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS= | ${SH}

NO_BUILD=	yes

post-extract:
	@cd ${WRKSRC}; split -l 1881 texi2html texi2html.

do-install:
	${INSTALL_SCRIPT} ${WRKDIR}/texi2html.aa ${PREFIX}/bin/texi2html
	${INSTALL_MAN} ${WRKDIR}/texi2html.ab ${PREFIX}/man/man1/${MAN1}

.include <bsd.port.mk>
