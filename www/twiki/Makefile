# $OpenBSD: Makefile,v 1.2 2005/03/08 07:43:19 kevlo Exp $

COMMENT=	"web-based collaboration platform"

DISTNAME=	TWiki20030201
PKGNAME=	TWiki-20030201
CATEGORIES=	www

HOMEPAGE=	http://twiki.org/

PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	${HOMEPAGE}/swd/	

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

WRKDIST=	${WRKDIR}

PREFIX=		/var/www
WWWDOCDIR=	${PREFIX}/htdocs
SUBST_VARS=	WWWDOCDIR

do-configure:
	@perl -i -pe 's@%%WWWDOCDIR%%@${WWWDOCDIR}@g' ${WRKSRC}/lib/TWiki.cfg
	@perl -i -pe 's@%%WWWDOCDIR%%@${WWWDOCDIR}@g' ${WRKSRC}/bin/setlib.cfg
	@find ${WRKSRC} -name '*.orig' |xargs rm

do-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/cgi-bin/twiki
	${INSTALL_SCRIPT} ${WRKSRC}/bin/* ${PREFIX}/cgi-bin/twiki
	${INSTALL_DATA} ${WRKSRC}/lib/TWiki.cfg ${WRKSRC}/lib/TWiki.cfg-sample
	${INSTALL_DATA_DIR} ${WWWDOCDIR}/twiki
.for d in data lib pub templates
	cp -R ${WRKSRC}/${d} ${WWWDOCDIR}/twiki
.endfor

.include <bsd.port.mk>
