# $OpenBSD: Makefile,v 1.2 1999/06/03 01:39:53 brad Exp $

DISTNAME=	texi2html
PKGNAME=	texi2html-1.52
CATEGORIES=	textproc
MASTER_SITES=	http://wwwcn.cern.ch/dci/texi2html/ \
		ftp://ftp.scc.ru/pub/unix/
EXTRACT_SUFX=	.shar.Z

MAINTAINER=	angelos@openbsd.org

NO_WRKSUBDIR=	yes
EXTRACT_CMD=	${GZCAT}
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS= | ${SH}

NO_BUILD=	yes

post-extract:
	@cd ${WRKSRC}; split -l 1881 texi2html texi2html.

do-install:
	${INSTALL_SCRIPT} ${WRKDIR}/texi2html.aa ${PREFIX}/bin/texi2html
	${INSTALL_MAN} ${WRKDIR}/texi2html.ab ${PREFIX}/man/man1/${MAN1}

.include <bsd.port.mk>
