# $OpenBSD: Makefile,v 1.5 2002/12/29 20:19:09 fgsch Exp $

COMMENT=		"generic interface to spell checker libraries"

V=			0
SV=			.12.2
PKGNAME=		pspell-${V}${SV}
DISTNAME=		pspell-${SV}
CATEGORIES=		textproc devel

MAINTAINER=		David Lebel <lebel@openbsd.org>

HOMEPAGE=		http://pspell.sourceforge.net/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pspell/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-doc-dir=${PREFIX}/share/doc/pspell \
			--disable-ltdl

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" 

.include <bsd.port.mk>
