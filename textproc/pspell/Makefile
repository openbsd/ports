# $OpenBSD: Makefile,v 1.2 2001/06/07 15:16:25 lebel Exp $

COMMENT=		"generic interface to spell checker libraries"

V=			0
SV=			.12.2
PKGNAME=		pspell-${V}${SV}
DISTNAME=		pspell-${SV}
CATEGORIES=		textproc devel
NEED_VERSION=		1.402

MAINTAINER=		David Lebel <lebel@openbsd.org>

HOMEPAGE=		http://pspell.sourceforge.net/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	pspell

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-doc-dir=${PREFIX}/share/doc/pspell

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
