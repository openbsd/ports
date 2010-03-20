# $OpenBSD: Makefile,v 1.13 2010/03/20 16:47:44 ajacoutot Exp $

COMMENT=	syslogd replacement

V=		2.1.4
DISTNAME=	syslog-ng-$V
PKGNAME=	${DISTNAME}p0
CATEGORIES=	sysutils

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

HOMEPAGE =	http://www.balabit.com/network-security/syslog-ng/

# GPL v2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	http://www.balabit.com/downloads/files/syslog-ng/open-source-edition/$V/source/
DISTFILES=	syslog-ng_$V.tar.gz

MODULES =	devel/gettext

WANTLIB =	c wrap

LIB_DEPENDS = 	glib-2.0::devel/glib2 \
		evtlog::sysutils/eventlog

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-tcp-wrapper

DOC =		${PREFIX}/share/doc/syslog-ng/
EXAMPLES =	${PREFIX}/share/examples/syslog-ng/

post-extract:
	tar -C ${WRKBUILD} -xzf ${WRKSRC}/doc/reference/syslog-ng.html.tar.gz

post-install:
	${INSTALL_DATA_DIR} ${DOC}
	${INSTALL_DATA} ${WRKBUILD}/syslog-ng.html/index.html ${DOC}
	${INSTALL_DATA_DIR} ${EXAMPLES}
	${INSTALL_DATA} ${WRKSRC}/doc/examples/syslog-ng.conf.sample ${EXAMPLES}

.include <bsd.port.mk>
