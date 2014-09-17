# $OpenBSD: Makefile,v 1.40 2014/09/17 09:13:12 ajacoutot Exp $

COMMENT=	DKIM milter

DISTNAME=	dkim-milter-2.8.3
REVISION=	5
CATEGORIES=	mail
HOMEPAGE=	http://sourceforge.net/projects/dkim-milter/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dkim-milter/}

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# sendmail open source license
PERMIT_PACKAGE_CDROM=		Patent
PERMIT_PACKAGE_FTP=		Yes

WANTLIB=	c crypto milter pthread ssl

LIB_DEPENDS=	mail/sendmail,-libmilter

EXAMPLESDIR=	share/examples/dkim-milter

post-configure:
	@(echo "define(\`confCC', \`${CC}')"; \
	  echo "define(\`confOPTIMIZE', \`${CFLAGS}')"; \
	  echo "define(\`confNO_MAN_BUILD')"; \
	  echo "APPENDDEF(\`confINCDIRS', \`-I${LOCALBASE}/include')"; \
	  echo "APPENDDEF(\`confLIBDIRS', \`-L${LOCALBASE}/lib ')") \
		>${WRKSRC}/devtools/Site/site.config.m4

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/obj.*/dkim-filter/dkim-filter ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKSRC}/obj.*/dkim-filter/dkim-testkey ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/obj.*/dkim-filter/dkim-testssp ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/dkim-filter/dkim-genkey.sh ${PREFIX}/bin/dkim-genkey
	${INSTALL_MAN} ${WRKSRC}/dkim-filter/dkim-filter.conf.5 ${PREFIX}/man/man5
	${INSTALL_MAN} ${WRKSRC}/dkim-filter/dkim-filter.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/dkim-filter/dkim-testkey.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/dkim-filter/dkim-testssp.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/dkim-filter/dkim-genkey.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/dkim-filter/dkim-filter.conf.sample ${PREFIX}/${EXAMPLESDIR}

.include <bsd.port.mk>
