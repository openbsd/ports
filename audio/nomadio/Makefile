# $OpenBSD: Makefile,v 1.5 2002/03/21 20:35:42 espie Exp $

COMMENT=	"Creative Labs NOMAD II MG IO"
DISTNAME=	nomadio-0.4
CATEGORIES=	audio
NEED_VERSION=	1.515

MASTER_SITES=	ftp://ftp.lucifier.net/pub/nomadio/

MAINTAINER=	Noma Dio <nomadio@lucifier.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

ONLY_FOR_ARCHS=		i386

FAKE_FLAGS=	PREFIX="${PREFIX}" DESTDIR="${DESTDIR}"

.include <bsd.port.mk>
