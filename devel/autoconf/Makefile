# $OpenBSD: Makefile,v 1.22 2000/10/10 00:40:28 espie Exp $

DISTNAME=	autoconf-2.13
CATEGORIES=	devel
NEED_VERSION=	1.301
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= autoconf

HOMEPAGE=	http://www.gnu.org/software/autoconf/

MAINTAINER=	Marc Espie <espie@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu dest
CONFIGURE_ENV=	M4=/usr/bin/m4

pre-configure:
# Check if /usr/bin/m4 recognizes option -g, and has builtin __line__
	@if [ X`echo "__line__"|/usr/bin/m4 -g 2>/dev/null` \
		== "X1" ]; then \
		exit 0; \
	fi; \
		echo >&2 "Your m4 is not current enough, sorry."; \
		echo >&2 "The turning point was March 18, 2000, a few months after 2.6 came out."; \
		echo >&2 "Update m4 to a more recent version," ; \
		echo >&2 "or retrieve an older version of the autoconf port."; \
	    	exit 1

.include <bsd.port.mk>
