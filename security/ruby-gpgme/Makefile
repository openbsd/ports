# $OpenBSD: Makefile,v 1.8 2019/10/23 20:42:54 sebastia Exp $

COMMENT =		Ruby language binding for gpgme

DISTNAME =		gpgme-2.0.19
REVISION =		0
CATEGORIES =		security

HOMEPAGE =		http://github.com/ueno/ruby-gpgme
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# LGPL-2.1+
PERMIT_PACKAGE = Yes

MODULES =		lang/ruby

WANTLIB +=		c m assuan gpg-error gpgme

LIB_DEPENDS +=		security/gpgme

CONFIGURE_STYLE =	ruby gem ext
CONFIGURE_ARGS +=	--use-system-libraries

.include <bsd.port.mk>
