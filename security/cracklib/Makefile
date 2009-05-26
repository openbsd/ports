# $OpenBSD: Makefile,v 1.1.1.1 2009/05/26 07:48:32 benoit Exp $

COMMENT =		sensible unix password cracker

DISTNAME =		cracklib-2.8.13
SHARED_LIBS =		crack	0.0	# .10.0
CATEGORIES =		security

HOMEPAGE =		http://sourceforge.net/projects/cracklib/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=cracklib/}

MODULES =		lang/python \
			devel/gettext
                        
USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--without-x \
			--with-default-dict=${PREFIX}/share/cracklib/cracklib-small
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
  
post-install:
			/bin/sh ${WRKSRC}/util/cracklib-format ${WRKSRC}/dicts/cracklib-small | ${WRKSRC}/util/cracklib-packer  \
			${WRKSRC}/dicts/cracklib-small
			${INSTALL_DATA} ${WRKSRC}/dicts/cracklib-small.* ${PREFIX}/share/cracklib

NO_REGRESS =		Yes
	
.include <bsd.port.mk>
