# $OpenBSD: Makefile,v 1.20 2013/07/05 09:34:36 jasper Exp $

COMMENT=		Squid Analysis Report Generator

DISTNAME=		sarg-2.3.7
CATEGORIES=		www

HOMEPAGE=	 	http://sarg.sourceforge.net/

MAINTAINER=		Robert Peichaer <rpe@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c gd m pcre

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sarg/}

USE_GROFF=		Yes

MODULES=		devel/gettext

LIB_DEPENDS=		devel/pcre \
 			graphics/gd

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--sysconfdir=${SYSCONFDIR}/sarg \
			--enable-sargphp=${VARBASE}/www/htdocs/sarg-php \
			--enable-fontdir=${SYSCONFDIR}/sarg/fonts \
			--enable-imagedir=${SYSCONFDIR}/sarg/images
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib -liconv -lintl"

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/cfgaux

FLAVORS=		ldap
FLAVOR?=

.if ${FLAVOR:Mldap}
CONFIGURE_ARGS+=	--with-ldap
LIB_DEPENDS+=		databases/openldap
WANTLIB+=		ldap
.else
CONFIGURE_ARGS+=	--without-ldap
.endif

NO_TEST=		Yes

EXAMPLESDIR=		${PREFIX}/share/examples/sarg

pre-configure:
	@chmod u=rwx,go=rx ${WRKSRC}/configure

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sarg ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/sarg.1 ${PREFIX}/man/man1/sarg.1
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/images
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/fonts
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/sarg-php
	${INSTALL_DATA} ${WRKSRC}/css.tpl ${EXAMPLESDIR}/
	${INSTALL_DATA} ${WRKSRC}/exclude_codes ${EXAMPLESDIR}/
	${INSTALL_DATA} ${WRKSRC}/images/* ${EXAMPLESDIR}/images/
	${INSTALL_DATA} ${WRKSRC}/sarg.conf ${EXAMPLESDIR}/
	${INSTALL_DATA} ${WRKSRC}/fonts/*.ttf ${EXAMPLESDIR}/fonts/
	${INSTALL_DATA} ${WRKSRC}/sarg-php/*php ${EXAMPLESDIR}/sarg-php/
	cp -R ${WRKSRC}/sarg-php/locale ${EXAMPLESDIR}/sarg-php/

.include <bsd.port.mk>
