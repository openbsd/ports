# $OpenBSD: Makefile.inc,v 1.1.1.1 2010/07/30 11:27:06 sthen Exp $

MAINTAINER ?= Stuart Henderson <sthen@openbsd.org>

# Various licenses; see individual Makefile.
PERMIT_PACKAGE_CDROM ?=		Yes
PERMIT_PACKAGE_FTP ?=		Yes
PERMIT_DISTFILES_CDROM ?=	Yes
PERMIT_DISTFILES_FTP ?=		Yes

MODULES += www/horde

NO_BUILD ?= Yes
NO_REGRESS ?= Yes
