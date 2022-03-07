COMMENT=	bulk mail detection (Distributed Checksum Clearinghouses)

DISTNAME=	dcc-2.3.168
EXTRACT_SUFX=	.tar.Z

CATEGORIES=	mail

HOMEPAGE=	https://www.dcc-servers.net/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# 'You can redistribute unchanged copies of the DCC source, but
# you may not redistribute modified, "fixed," or "improved" versions of
# the source or binaries.'
PERMIT_PACKAGE=	see WRKSRC/LICENSE and https://www.rhyolite.com/dcc/#license
PERMIT_DISTFILES=Yes

WANTLIB += c curses edit m pthread

MASTER_SITES=	https://www.dcc-servers.net/dcc/source/old/

USE_GMAKE=	Yes

CFLAGS+=	-fcommon

CONFIGURE_STYLE= simple
# find the rrdtool path without requiring a dep
# INSTALL is written to updatedcc; while it isn't expected that this
# will normally be used with OpenBSD, allow the option.
CONFIGURE_ENV=	RRDTOOL=${LOCALBASE}/bin/rrdtool \
		INSTALL=/usr/bin/install
CONFIGURE_ARGS=	--disable-dccm \
		--enable-pkg-make=yes \
		--with-uid=_dcc \
		--with-installroot=${WRKINST} \
		--bindir=${TRUEPREFIX}/bin \
		--mandir=${TRUEPREFIX}/man \
		--libexecdir=${TRUEPREFIX}/libexec/dcc \
		--homedir=/var/dcc \
		--with-make-cmd=${MAKE_PROGRAM} \
		--with-cgibin=${TRUEPREFIX}/dcc/cgi-bin \
		--without-DCC-MD5
NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/dcc
	mv ${WRKINST}/var/dcc/* ${PREFIX}/share/examples/dcc
	ln -s ${TRUEPREFIX}/libexec/dcc ${WRKINST}/var/dcc/libexec
	${INSTALL_DATA} ${WRKSRC}/*html ${PREFIX}/share/doc/dcc

.include <bsd.port.mk>
