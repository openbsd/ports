# $OpenBSD: Makefile,v 1.6 2007/06/01 22:07:39 aanriot Exp $

COMMENT=	"web-based collaboration platform"

DISTNAME=	TWiki-4.1.1
EXTRACT_SUFX=	.tgz
CATEGORIES=	www

HOMEPAGE=	http://twiki.org/

# GPL
PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	${HOMEPAGE}/p/pub/Codev/Release/

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

RUN_DEPENDS=	::www/p5-CGI-Session

WRKDIST=	${WRKDIR}

PREFIX=		/var/www
WWWDOCDIR=	${PREFIX}/htdocs/twiki
WWWCGIDIR=	${PREFIX}/cgi-bin/twiki
SUBST_VARS=	WWWDOCDIR WWWCGIDIR

post-extract:
	@cp -p ${WRKSRC}/bin/LocalLib.cfg.txt ${WRKSRC}/bin/LocalLib.cfg

do-configure:
	@perl -i -pe 's@%%WWWDOCDIR%%@${WWWDOCDIR}@g' ${WRKSRC}/bin/LocalLib.cfg
	@find ${WRKSRC} -name '*.orig' |xargs rm
	@find ${WRKSRC} -name '*\,v' |xargs rm

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/conf
	${INSTALL_DATA} ${FILESDIR}/httpd-twiki.conf ${PREFIX}/conf/

	${INSTALL_DATA_DIR} ${WWWDOCDIR}
	${INSTALL_SCRIPT_DIR} ${WWWCGIDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/bin/!(logos) ${WWWCGIDIR}

.for f in index.html robots.txt INSTALL.html TWikiHistory.html \
	TWikiReleaseNotes04x01.html TWikiUpgradeGuide.html \
	pub-htaccess.txt readme.txt root-htaccess.txt \
	subdir-htaccess.txt  

	${INSTALL_DATA} ${WRKSRC}/${f} ${WWWDOCDIR}
.endfor

.for d in data lib pub templates tools
	cp -R ${WRKSRC}/${d} ${WWWDOCDIR}
.endfor

.include <bsd.port.mk>
