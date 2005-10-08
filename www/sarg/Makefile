# $OpenBSD: Makefile,v 1.2 2005/10/08 08:13:21 pvalchev Exp $

COMMENT=		"Squid Analysis Report Generator"

DISTNAME=		sarg-2.0.9
CATEGORIES=		www

HOMEPAGE=	 	http://sarg.sourceforge.net/	

MAINTAINER=		Douglas Santos <dsantos@hydroxyl.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   	${MASTER_SITE_SOURCEFORGE:=sarg/}

WANTLIB=		c

CONFIGURE_STYLE=  	gnu
CONFIGURE_ARGS=		--enable-bindir=${LOCALBASE}/bin \
			--enable-sysconfdir=${SYSCONFDIR}/sarg \
			--enable-htmldir=/var/www/htdocs/sarg \

NO_REGRESS=		Yes

EXAMPLESDIR=		${PREFIX}/share/examples/sarg
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/cfgaux

post-extract:
	@chmod 755 ${WRKSRC}/sarg-php/locale	

post-build:
	@perl -pi -e \
		"s,/usr/local/sarg,${SYSCONFDIR}/sarg," \
		${WRKSRC}/sarg.1
	@perl -pi -e \
		"s,/usr/local/squid,/var/squid," ${WRKSRC}/sarg.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sarg ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/sarg.1 ${PREFIX}/man/man1/sarg.1
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/images
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/fonts
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/languages
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/sarg-php
	${INSTALL_DATA} ${WRKSRC}/css.tpl ${EXAMPLESDIR}/
	${INSTALL_DATA} ${WRKSRC}/exclude_codes ${EXAMPLESDIR}/
	${INSTALL_DATA} ${WRKSRC}/images/* ${EXAMPLESDIR}/images/
	${INSTALL_DATA} ${WRKSRC}/sarg.conf ${EXAMPLESDIR}/
	${INSTALL_DATA} ${WRKSRC}/fonts/FreeSans.ttf ${EXAMPLESDIR}/fonts/ 
	${INSTALL_DATA} ${WRKSRC}/languages/* ${EXAMPLESDIR}/languages/
	${INSTALL_DATA} ${WRKSRC}/sarg-php/*php ${EXAMPLESDIR}/sarg-php/
	cp -R ${WRKSRC}/sarg-php/locale ${EXAMPLESDIR}/sarg-php/

.include <bsd.port.mk>
