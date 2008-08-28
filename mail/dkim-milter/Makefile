# $OpenBSD: Makefile,v 1.27 2008/08/28 08:23:09 jakob Exp $

COMMENT=	DKIM milter

DISTNAME=	dkim-milter-2.7.1
PKGNAME=	${DISTNAME}
CATEGORIES=	mail
HOMEPAGE=	http://sourceforge.net/projects/dkim-milter/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dkim-milter/}

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# sendmail open source license
PERMIT_PACKAGE_CDROM=		Patent
PERMIT_PACKAGE_FTP=		Yes
PERMIT_DISTFILES_CDROM=		Patent
PERMIT_DISTFILES_FTP=		Yes

WANTLIB=	c crypto pthread milter ssl

EXAMPLESDIR=	share/examples/dkim-milter

post-configure:
	@(echo "define(\`confCC', \`${CC}')"; \
	  echo "define(\`confOPTIMIZE', \`${CFLAGS}')") \
		>${WRKSRC}/devtools/Site/site.config.m4

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/obj.*/dkim-filter/dkim-filter ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKSRC}/obj.*/dkim-filter/dkim-testkey ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/obj.*/dkim-filter/dkim-testssp ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/dkim-filter/dkim-genkey.sh ${PREFIX}/bin/dkim-genkey
	${INSTALL_MAN} ${WRKSRC}/dkim-filter/dkim-filter.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/dkim-filter/dkim-testkey.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/dkim-filter/dkim-testssp.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/dkim-filter/dkim-genkey.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/dkim-filter/dkim-filter.conf.sample ${PREFIX}/${EXAMPLESDIR}

.include <bsd.port.mk>
