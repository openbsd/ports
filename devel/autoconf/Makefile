# $OpenBSD: Makefile,v 1.18 2000/03/18 15:54:22 espie Exp $

DISTNAME=	autoconf-2.13
CATEGORIES=	devel
NEED_VERSION=	1.223
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= autoconf

MAINTAINER=	espie@cvs.openbsd.org

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

SEPARATE_BUILD=	concurrent
HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=--prefix='$${DESTDIR}${PREFIX}' --sysconfdir='$${DESTDIR}/etc'
CONFIGURE_ENV=M4=/usr/bin/m4
FAKE=		Yes

pre-configure:
# Check if /usr/bin/m4 recognizes option -g, and has builtin __line__
	@if [ `echo "__line__"|/usr/bin/m4 -g` \
		!= "1" ]; then \
		echo >&2 "Your m4 is not current enough, sorry"; \
	    	exit 1; \
	fi

.include <bsd.port.mk>
