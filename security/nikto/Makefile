# $OpenBSD: Makefile,v 1.4 2005/02/06 17:11:03 sturm Exp $

COMMENT=	"Web and CGI vulnerability scanner with SSL support"

DISTNAME=	nikto-1.34
PKGNAME=	${DISTNAME}p0
CATEGORIES=	security www

HOMEPAGE=	http://www.cirt.net/code/nikto.shtml

MASTER_SITES=	http://www.cirt.net/nikto/ \
		http://packetstormsecurity.org/UNIX/cgi-scanners/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	:p5-Net-SSLeay-*:security/p5-Net_SSLeay

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/nikto
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nikto

	@perl -pi -e 's,# PLUGINDIR=.+,PLUGINDIR=${LOCALBASE}/share/nikto,' \
		${WRKSRC}/config.txt
	@perl -pi -e 's,config.txt,${SYSCONFDIR}/nikto.conf,' ${WRKSRC}/nikto.pl

	${INSTALL_SCRIPT} ${WRKSRC}/nikto.pl ${PREFIX}/bin/nikto
	@ln -s nikto ${PREFIX}/bin/nikto.pl
	${INSTALL_DATA} ${WRKSRC}/config.txt \
		${PREFIX}/share/examples/nikto/nikto.conf

	@for i in `ls ${WRKSRC}/plugins/` ; do \
		${INSTALL_DATA} ${WRKSRC}/plugins/$$i ${PREFIX}/share/nikto; \
	done

.include <bsd.port.mk>
