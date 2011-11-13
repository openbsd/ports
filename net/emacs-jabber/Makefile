# $OpenBSD: Makefile,v 1.2 2011/11/13 15:46:06 jasper Exp $

COMMENT =		Jabber client for Emacs

DISTNAME =		emacs-jabber-0.8.90
REVISION =		0
CATEGORIES =		net

HOMEPAGE =		http://emacs-jabber.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=emacs-jabber/}

FLAVORS =		emacs21 emacs22 emacs23
FLAVOR ?=		emacs21

.if ${FLAVOR:Memacs21}
EMACS_VSN =	21.4
.elif ${FLAVOR:Memacs22}
EMACS_VSN =	22.3
.elif ${FLAVOR:Memacs23}
EMACS_VSN =	23.3
.else
ERRORS+=	"Unsupported Emacs version"
.endif

BUILD_DEPENDS = 	editors/${FLAVOR}>=${EMACS_VSN}
RUN_DEPENDS =		editors/${FLAVOR}>=${EMACS_VSN} \
			security/gnutls

CONFIGURE_STYLE =	gnu
# Could use gconf, but don't pull in such a dep as people may use no_x11
CONFIGURE_ARGS +=	--disable-schemas-install \
			--with-lispdir=${PREFIX}/share/emacs/site-lisp/emacs-jabber
CONFIGURE_ENV =		EMACS=emacs-${EMACS_VSN}

.include <bsd.port.mk>
