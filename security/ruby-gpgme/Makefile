# $OpenBSD: Makefile,v 1.5 2019/01/02 12:23:27 sebastia Exp $

COMMENT =		Ruby language binding for gpgme

DISTNAME =		gpgme-2.0.18
CATEGORIES =		security

HOMEPAGE =		http://github.com/ueno/ruby-gpgme
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# LGPL-2.1+
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

WANTLIB +=		assuan gpg-error gpgme

LIB_DEPENDS +=		security/gpgme

CONFIGURE_STYLE =	ruby gem ext
CONFIGURE_ARGS +=	--use-system-libraries

.include <bsd.port.mk>
