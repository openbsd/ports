# $OpenBSD: Makefile,v 1.5 2005/11/09 10:27:06 aanriot Exp $

COMMENT=	"web-based collaboration platform"

DISTNAME=	TWiki20040903
PKGNAME=	TWiki-20040903p0
CATEGORIES=	www

HOMEPAGE=	http://twiki.org/

# GPL
PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	${HOMEPAGE}/swd/	

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

WRKDIST=	${WRKDIR}/twiki

PREFIX=		/var/www
WWWDOCDIR=	${PREFIX}/htdocs/twiki
WWWCGIDIR=	${PREFIX}/cgi-bin/twiki
SUBST_VARS=	WWWDOCDIR WWWCGIDIR

do-configure:
	@perl -i -pe 's@%%WWWDOCDIR%%@${WWWDOCDIR}@g' ${WRKSRC}/lib/TWiki.cfg
	@perl -i -pe 's@%%WWWDOCDIR%%@${WWWDOCDIR}@g' ${WRKSRC}/bin/setlib.cfg
	@find ${WRKSRC} -name '*.orig' |xargs rm
	@find ${WRKSRC} -name '*\,v' |xargs rm

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/conf
	${INSTALL_DATA} ${FILESDIR}/httpd-twiki.conf ${PREFIX}/conf/

	${INSTALL_DATA_DIR} ${WWWDOCDIR}
	${INSTALL_SCRIPT_DIR} ${WWWCGIDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/bin/* ${WWWCGIDIR}

.for f in index.html robots.txt TWikiDocumentation.html TWikiHistory.html
	${INSTALL_DATA} ${WRKSRC}/${f} ${WWWDOCDIR}
.endfor

.for d in data lib pub templates
	cp -R ${WRKSRC}/${d} ${WWWDOCDIR}
.endfor

.include <bsd.port.mk>
