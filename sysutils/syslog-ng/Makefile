# $OpenBSD: Makefile,v 1.9 2008/11/09 23:27:03 steven Exp $

COMMENT=	syslogd replacement

DISTNAME=	syslog-ng-2.1.1
CATEGORIES=	sysutils

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

HOMEPAGE =	http://www.balabit.com/network-security/syslog-ng/

# GPL v2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	http://www.balabit.com/downloads/files/syslog-ng/sources/2.1/src/

WANTLIB =	c iconv intl wrap

LIB_DEPENDS = 	glib-2.0::devel/glib2 \
		evtlog::sysutils/eventlog

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-tcp-wrapper

DOC =		${PREFIX}/share/doc/syslog-ng/
EXAMPLES =	${PREFIX}/share/examples/syslog-ng/

post-extract:
	tar -C ${WRKBUILD} -xzf ${WRKSRC}/doc/reference/syslog-ng.html.tar.gz

# temporary hack: avoid regenerating some files
pre-configure:
	touch -m 0808080000 ${WRKSRC}/src/cfg-grammar.y

post-install:
	${INSTALL_DATA_DIR} ${DOC}
	${INSTALL_DATA} ${WRKBUILD}/syslog-ng.html/index.html ${DOC}
	${INSTALL_DATA_DIR} ${EXAMPLES}
	${INSTALL_DATA} ${WRKSRC}/doc/examples/syslog-ng.conf.sample ${EXAMPLES}

.include <bsd.port.mk>
