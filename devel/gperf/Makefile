# $OpenBSD: Makefile,v 1.12 2001/05/06 00:13:01 lebel Exp $

COMMENT=	"perfect hash functions, to help write parsers"

DISTNAME=	gperf-2.7.2
CATEGORIES=   	devel
NEED_VERSION=	1.402

MAINTAINER=	Marc Espie <espie@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	gperf

# Don't use SEPARATE_BUILD, the doc doesn't like it
CONFIGURE_STYLE=	gnu
# and it also insists upon installing under $(prefix)/doc...
FAKE_FLAGS=docdir='$$(prefix)/share/doc/gperf'

.include <bsd.port.mk>
