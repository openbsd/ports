# $OpenBSD: Makefile,v 1.1.1.1 2014/03/28 20:58:56 naddy Exp $

COMMENT=		command-line FLAC player

DISTNAME=		flac123-0.0.12
CATEGORIES=		audio
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=flac-tools/}

HOMEPAGE=		http://flac-tools.sourceforge.net/

MAINTAINER=		Donovan Watteau <tsoomi@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

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
