COMMENT=		Squid Analysis Report Generator

DISTNAME=		sarg-2.4.0
REVISION=		0
CATEGORIES=		www

HOMEPAGE=		http://sarg.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += bz2 c execinfo gd iconv intl lzma m pcre z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sarg/}

LIB_DEPENDS=		archivers/bzip2 \
			devel/gettext,-runtime \
			devel/pcre \
 			graphics/gd

CFLAGS+=		-fcommon

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--sysconfdir=${SYSCONFDIR}/sarg \
			--enable-sargphp=${VARBASE}/www/htdocs/sarg-php \
			--enable-fontdir=${SYSCONFDIR}/sarg/fonts \
			--enable-imagedir=${SYSCONFDIR}/sarg/images
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib -liconv -lintl -lexecinfo"

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

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sarg ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/sarg.1 ${PREFIX}/man/man1/sarg.1
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/{images,fonts,sarg-php}
	${INSTALL_DATA} ${WRKSRC}/{css.tpl,exclude_codes,sarg.conf} \
		${EXAMPLESDIR}/
	${INSTALL_DATA} ${WRKSRC}/fonts/*.ttf ${EXAMPLESDIR}/fonts/
	${INSTALL_DATA} ${WRKSRC}/images/* ${EXAMPLESDIR}/images/
	cp -R ${WRKSRC}/sarg-php/{locale,*.php} ${EXAMPLESDIR}/sarg-php/

.include <bsd.port.mk>
