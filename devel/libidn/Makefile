# $OpenBSD: Makefile,v 1.4 2006/01/06 12:24:55 bernd Exp $

COMMENT=		"internationalized string handling"

DISTNAME=		libidn-0.5.20
PKGNAME=		${DISTNAME}p1
SHARED_LIBS=		idn 16.13
MODGNU_SHARED_LIBS=	idn '-export-symbols-regex "^(idn|pr29_|punycode_|stringprep|tld_).*"'

CATEGORIES=		devel
HOMEPAGE=		http://www.gnu.org/software/libidn/

MAINTAINER=		Bernd Ahlers <bernd@openbsd.org>

# GPL / LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://alpha.gnu.org/pub/gnu/libidn/ \
			http://josefsson.org/libidn/releases/

WANTLIB=		c
MODULES=		devel/gettext
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

USE_LIBTOOL=		Yes

post-extract:
	@rm -f ${WRKSRC}/contrib/doxygen/*.orig

.include <bsd.port.mk>
