# $OpenBSD: Makefile,v 1.1.1.1 2002/06/24 19:23:41 avsm Exp $

COMMENT=	"server-side HTML-embedded scripting language"
PKGNAME=	php4-core-${V}

CONFIGURE_ARGS+= --with-apxs=/usr/sbin/apxs \
		--without-mysql --without-xml --enable-cli \
		--with-iconv=${LOCALBASE} --with-gettext=${LOCALBASE} \
		--with-recode=${LOCALBASE} --without-pear

MODULES=	gettext iconv
LIB_DEPENDS+=	recode.0::converters/recode

do-install:
	${INSTALL_DATA} ${WRKBUILD}/.libs/libphp4.so ${PREFIX}/lib/libphp4.so
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/php4
	${INSTALL_PROGRAM} ${WRKBUILD}/sapi/cli/php ${PREFIX}/bin
	@sed 's,MODULES_DIR,${MODULES_DIR},' \
		<${WRKSRC}/php.ini-dist \
		>${PREFIX}/share/doc/php4/php.ini-dist
	@sed 's,MODULES_DIR,${MODULES_DIR},' \
		<${WRKSRC}/php.ini-recommended \
		>${PREFIX}/share/doc/php4/php.ini-recommended
	@sed 's,y0y0y0,${TRUEPREFIX},' \
		<${FILESDIR}/php4-enable >${PREFIX}/sbin/php4-enable
	@chown ${BINOWN}:${BINGRP} ${PREFIX}/sbin/php4-enable
	@chmod ${BINMODE} ${PREFIX}/sbin/php4-enable

.include <bsd.port.mk>
