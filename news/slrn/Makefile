# $OpenBSD: Makefile,v 1.44 2009/10/13 21:49:02 sthen Exp $

COMMENT=		SLang-based newsreader

DISTNAME=		slrn-0.9.9p1 # p1 is part of upstream version XXX
PKGNAME=		${DISTNAME:S/p/pl/}
CATEGORIES=		news

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=slrn/}
HOMEPAGE=		http://www.slrn.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c crypto m ssl termcap 

#FAKE=			lib
##PFILES=			lastchar fetch
##MASTER_SITES0=  	http://slrn.sourceforge.net/patches/
##.for i in ${PFILES}
##PATCHFILES+=    	slrn-${VERSION}-$i.diff:0
##.endfor
##PATCH_DIST_STRIP=-p1
MAKE_ARGS+=		SLRN_SENDMAIL_COMMAND="/usr/sbin/sendmail -oi -t -oem -odb" \
			LDFLAGS="${LDFLAGS}"

NO_REGRESS=		Yes
LIB_DEPENDS=		slang.>=15::devel/libslang
MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-inews --with-ssl --with-slrnpull --enable-spool
LDFLAGS=		-L${LOCALBASE}/lib -lm
CONFIGURE_ENV=		LDFLAGS="${LDFLAGS}"
#CPPFLAGS="-I ${LOCALBASE}/include"
CONFIGURE_ARGS+=	--with-slang=${LOCALBASE} \
			--with-libiconv=${LOCALBASE}

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autoconf

.include <bsd.port.mk>
