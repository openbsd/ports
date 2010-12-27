# $OpenBSD: Makefile,v 1.16 2010/12/27 14:50:22 ajacoutot Exp $

SHARED_ONLY =	Yes

COMMENT =	Internet Relay Chat server

DISTNAME =	ircd-hybrid-7.2.3
REVISION =	10
CATEGORIES =	net

HOMEPAGE =	http://ircd-hybrid.com/

# GPLv2
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ircd-hybrid/}
EXTRACT_SUFX =		.tgz

WANTLIB =		c crypto ssl z pcre

LIB_DEPENDS =		devel/pcre

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

MAKE_FLAGS =		AUTOMODULEDIR='$${prefix}/lib/ircd-hybrid/modules' \
			moduledir='$${prefix}/lib/ircd-hybrid/modules'

USE_GROFF =		Yes
NO_REGRESS =		Yes

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/etc/example.conf ${WRKSRC}/include/defaults.h

.include <bsd.port.mk>
