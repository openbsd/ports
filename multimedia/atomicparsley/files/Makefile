# $OpenBSD: Makefile,v 1.1.1.1 2009/11/06 14:29:14 sthen Exp $

PROG=		AtomicParsley
SRCS=		AP_commons.cpp AtomicParsley_genres.cpp AP_iconv.cpp \
		AtomicParsley.cpp AP_AtomExtracts.cpp APar_sha1.cpp \
		APar_uuid.cpp main.cpp
NOMAN =
BINDIR =	${TRUEPREFIX}/bin
LDFLAGS =	-lstdc++ -lm

.SUFFIXES: .cpp

.cpp.o: ${OBJS}
	$(CXX) -c $(CXXFLAGS) $<

.include <bsd.prog.mk>
