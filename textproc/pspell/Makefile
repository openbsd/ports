# $OpenBSD: Makefile,v 1.6 2003/02/24 04:08:02 brad Exp $

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

.include <bsd.port.mk>
