# $OpenBSD: Makefile.inc,v 1.3 2013/03/11 11:44:42 espie Exp $

MAINTAINER ?= Stuart Henderson <sthen@openbsd.org>

# Various licenses; see individual Makefile.
PERMIT_PACKAGE_CDROM ?=		Yes
PERMIT_PACKAGE_FTP ?=		Yes
PERMIT_DISTFILES_FTP ?=		Yes

MODULES += lang/php www/horde

NO_BUILD ?= Yes
NO_TEST ?= Yes
