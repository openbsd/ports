# $OpenBSD: Makefile,v 1.3 2002/01/18 22:26:26 mickey Exp $

COMMENT=	"Creative Labs NOMAD II MG IO"
DISTNAME=	nomadio-0.3
CATEGORIES=	audio
NEED_VERSION=	1.364

MASTER_SITES=	ftp://ftp.lucifier.net/pub/nomadio/

MAINTAINER=	nomadio@lucifier.net

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

ONLY_FOR_ARCHS=		i386

FAKE_FLAGS=	PREFIX="${PREFIX}" DESTDIR="${DESTDIR}"

.include <bsd.port.mk>
