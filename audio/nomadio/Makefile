# $OpenBSD: Makefile,v 1.12 2002/12/29 19:29:57 fgsch Exp $

COMMENT=	"Creative Labs NOMAD II MG IO"
DISTNAME=	nomadio-0.7
CATEGORIES=	audio

MASTER_SITES=	ftp://ftp.lucifier.net/pub/nomadio/
HOMEPAGE=	http://nomadio.lucifier.net/

MAINTAINER=	Michael Shalayeff <mickey@openbsd.org>

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

ONLY_FOR_ARCHS=		i386

FAKE_FLAGS=	PREFIX="${PREFIX}" DESTDIR="${DESTDIR}"

.include <bsd.port.mk>
