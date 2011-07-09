# $OpenBSD: Makefile.inc,v 1.2 2011/07/09 00:14:45 robert Exp $

MAINTAINER ?= Stuart Henderson <sthen@openbsd.org>

# Various licenses; see individual Makefile.
PERMIT_PACKAGE_CDROM ?=		Yes
PERMIT_PACKAGE_FTP ?=		Yes
PERMIT_DISTFILES_CDROM ?=	Yes
PERMIT_DISTFILES_FTP ?=		Yes

MODULES += lang/php www/horde

NO_BUILD ?= Yes
NO_REGRESS ?= Yes
