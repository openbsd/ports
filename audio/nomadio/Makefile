# $OpenBSD: Makefile,v 1.10 2002/05/28 03:53:31 mickey Exp $

COMMENT=	"Creative Labs NOMAD II MG IO"
DISTNAME=	nomadio-0.7
CATEGORIES=	audio
NEED_VERSION=	1.515

MASTER_SITES=	ftp://ftp.lucifier.net/pub/nomadio/

MAINTAINER=	Michael Shalayeff <mickey@openbsd.org>

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

ONLY_FOR_ARCHS=		i386

FAKE_FLAGS=	PREFIX="${PREFIX}" DESTDIR="${DESTDIR}"

.include <bsd.port.mk>
