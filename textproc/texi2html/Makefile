# $OpenBSD: Makefile,v 1.8 2000/04/21 19:15:07 espie Exp $

DISTNAME=	texi2html
PKGNAME=	texi2html-1.52
CATEGORIES=	textproc
NEED_VERSION=	1.191
FAKE=		Yes
MASTER_SITES=	http://wwwcn.cern.ch/dci/texi2html/ \
		ftp://ftp.scc.ru/pub/unix/
EXTRACT_SUFX=	.shar.Z

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}
EXTRACT_CMD=	gzcat
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS= | ${SH}

NO_BUILD=	yes

post-extract:
	@cd ${WRKSRC} && sed -e '1,/__END__/d' <texi2html >texi2html.1
	@cd ${WRKSRC} && sed -e '/both Perl and nroff/,$$d' <texi2html >texi2html.pl

do-install:
	${INSTALL_SCRIPT} ${WRKDIR}/texi2html.pl ${PREFIX}/bin/texi2html
	${INSTALL_MAN} ${WRKDIR}/texi2html.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
