# $OpenBSD: Makefile,v 1.21 2019/07/14 02:16:51 naddy Exp $

COMMENT=	C++ class library for MIME messages

DISTNAME=		mimepp-1.0
REVISION=		1
CATEGORIES=		converters

PERMIT_PACKAGE=		restrictive non-commercial license
PERMIT_DISTFILES=	Yes

MASTER_SITES=		${MASTER_SITE_SUNSITE:=devel/lang/c++/}

MAKE_FILE=		makefile.unx
MAKE_FLAGS=		CXX="${CXX}"
ALL_TARGET=		lib

INCLUDE=	address.h addrlist.h binhex.h body.h bodypart.h boyermor.h \
		config.h datetime.h debug.h disptype.h entity.h enum.h \
		field.h fieldbdy.h group.h headers.h mailbox.h mboxlist.h \
		mechansm.h mediatyp.h message.h mimepp.h msgcmp.h msgid.h \
		nntp.h param.h pop.h protocol.h smtp.h string.h text.h  \
		token.h utility.h uuencode.h

DOC=		CPYRIGHT LICENSE README Tutorial

EXAMPLES=	attach.cpp attach.h basicmsg.cpp basicmsg.h exampl01.cpp \
		exampl01.txt exampl02.cpp exampl02.txt exampl03.cpp \
		exampl03.txt exampl04.cpp exampl04.txt exampl05.cpp \
		exampl05.txt multipar.cpp multipar.h

do-install:
	@ ${INSTALL_DATA} ${WRKSRC}/libmimepp.a ${PREFIX}/lib
	@ ${INSTALL_DATA_DIR} ${PREFIX}/include/mimepp
.for file in ${INCLUDE}
	@ ${INSTALL_DATA} ${WRKSRC}/mimepp/${file} ${PREFIX}/include/mimepp
.endfor
	@ ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mimepp
.for file in ${DOC}
	@ ${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/mimepp
.endfor
	@ ${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/mimepp
	@ ${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mimepp
	@ ${INSTALL_DATA} ${FILESDIR}/Makefile ${PREFIX}/share/examples/mimepp
.for file in ${EXAMPLES}
	@ ${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/examples/mimepp
.endfor

NO_TEST=	Yes

.include <bsd.port.mk>
