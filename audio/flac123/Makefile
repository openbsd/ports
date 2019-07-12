# $OpenBSD: Makefile,v 1.3 2019/07/12 20:43:33 sthen Exp $

COMMENT=		command-line FLAC player

DISTNAME=		flac123-0.0.12
CATEGORIES=		audio
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=flac-tools/}
REVISION=		0

HOMEPAGE=		http://flac-tools.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

DISTFILES=		${DISTNAME}-release.tar.gz

WANTLIB=		FLAC ao c m ogg popt
LIB_DEPENDS=		audio/flac \
			audio/libao \
			devel/popt

SEPARATE_BUILD=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-default-audio=sndio

# prevent autotools rebuild cascade
post-patch:
	@touch -r ${WRKSRC}/configure.ac ${WRKSRC}/aclocal.m4

post-install:
	${INSTALL_MAN} ${FILESDIR}/flac123.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
