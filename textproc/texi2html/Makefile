# $OpenBSD: Makefile,v 1.6 2000/03/24 22:12:02 espie Exp $

DISTNAME=	texi2html
PKGNAME=	texi2html-1.52
CATEGORIES=	textproc
NEED_VERSION=	1.191
MASTER_SITES=	http://wwwcn.cern.ch/dci/texi2html/ \
		ftp://ftp.scc.ru/pub/unix/
EXTRACT_SUFX=	.shar.Z

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

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
