# $OpenBSD: Makefile,v 1.14 2002/12/29 20:19:10 fgsch Exp $

COMMENT=	"perfect hash functions, to help write parsers"

DISTNAME=	gperf-2.7.2
CATEGORIES=   	devel

MAINTAINER=	Marc Espie <espie@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=gperf/}

# Don't use SEPARATE_BUILD, the doc doesn't like it
CONFIGURE_STYLE=	gnu
# and it also insists upon installing under $(prefix)/doc...
FAKE_FLAGS=docdir='$$(prefix)/share/doc/gperf'

.include <bsd.port.mk>
