# $OpenBSD: Makefile,v 1.8 2002/10/25 16:23:30 naddy Exp $

COMMENT=	"GNU Problem Report Management System"

DISTNAME=	gnats-3.113.1
CATEGORIES=	databases devel
MASTER_SITES=	${MASTER_SITE_SOURCEWARE:=gnats/snapshots/}
HOMEPAGE=	http://sources.redhat.com/gnats/
MAINTAINER=	Dug Song <dugsong@monkey.org>

FLAVORS=	www
FLAVOR?=

.if ${FLAVOR:L:Mwww}
RUN_DEPENDS+=	${PREFIX}/libdata/perl5/site_perl/${ARCH}-openbsd/MIME/Base64.pm::converters/p5-MIME-Base64
.endif

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+=--with-full-gnats --with-release-based
CONFIGURE_ENV+=	SEND_PR=/usr/bin/false

NO_REGRESS=	Yes

INSTALL_TARGET=	install-gnats install-send-pr install-info

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnats/
	sed "s%y0y0y0%${TRUEPREFIX}%g" ${FILESDIR}/README.OpenBSD > \
		${PREFIX}/share/doc/gnats/README.OpenBSD
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnats/
	sed "s%/var/lib%${TRUEPREFIX}/share%g" \
		${WRKDIST}/gnats/gnats-db.conf > \
		${PREFIX}/share/examples/gnats/gnats-db.conf
.if ${FLAVOR:L:Mwww}
	${INSTALL_PROGRAM} ${WRKDIST}/contrib/gnatsweb/gnatsweb.pl \
		${PREFIX}/lib/gnatsweb
.endif

.include <bsd.port.mk>
