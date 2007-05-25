# $OpenBSD: Makefile,v 1.42 2007/05/25 00:50:50 aanriot Exp $

COMMENT=		"SLang-based newsreader"

VERSION=		0.9.8.1
DISTNAME=		slrn-${VERSION}
PKGNAME=		${DISTNAME}p2
CATEGORIES=		news

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=slrn/}
HOMEPAGE=		http://www.slrn.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto m ssl termcap 

FAKE=			lib
PFILES=			lastchar fetch
MASTER_SITES0=  	http://slrn.sourceforge.net/patches/
.for i in ${PFILES}
PATCHFILES+=    	slrn-${VERSION}-$i.diff:0
.endfor
PATCH_DIST_STRIP=-p1

NO_REGRESS=		Yes
LIB_DEPENDS=		slang.::devel/libslang
MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-inews --with-ssl --with-slrnpull --enable-spool
CONFIGURE_ARGS+=	--with-slang-library=${DEPBASE}/lib \
			--with-slang-includes=${DEPBASE}/include \
			--with-libiconv-prefix=${DEPBASE} \
			--with-libintl-prefix=${DEPBASE}

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autoconf

.include <bsd.port.mk>
