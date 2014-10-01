
SHELL = /bin/sh

#### Start of system configuration section. ####

srcdir = .
topdir = /usr/lib64/ruby/1.8/x86_64-linux
hdrdir = $(topdir)
VPATH = $(srcdir):$(topdir):$(hdrdir)
exec_prefix = $(DESTDIR)/usr
prefix = $(DESTDIR)/usr
datadir = $(DESTDIR)/usr/share
bindir = $(DESTDIR)/usr/bin
rubylibdir = $(vendordir)/$(ruby_version)
sysconfdir = $(DESTDIR)/etc
libexecdir = $(DESTDIR)/usr/libexec
mandir = $(DESTDIR)/usr/share/man
sitedir = $(DESTDIR)/usr/lib/ruby/site_ruby
datarootdir = $(prefix)/share
libdir = $(DESTDIR)/usr/lib64
sbindir = $(DESTDIR)/usr/sbin
docdir = $(datarootdir)/doc/$(PACKAGE)
includedir = $(DESTDIR)/usr/include
sitearchdir = $(libdir)/ruby/site_ruby/$(ruby_version)/$(sitearch)
vendorarchdir = $(libdir)/ruby/$(ruby_version)/$(sitearch)
localedir = $(datarootdir)/locale
sharedstatedir = $(DESTDIR)/var/lib
vendorlibdir = $(vendordir)/$(ruby_version)
sitelibdir = $(sitedir)/$(ruby_version)
infodir = $(DESTDIR)/usr/share/info
pdfdir = $(docdir)
vendordir = $(DESTDIR)/usr/lib/ruby
htmldir = $(docdir)
oldincludedir = $(DESTDIR)/usr/include
archdir = $(libdir)/ruby/$(ruby_version)/$(sitearch)
localstatedir = $(DESTDIR)/var
dvidir = $(docdir)
psdir = $(docdir)

CC = gcc
LIBRUBY = $(LIBRUBY_SO)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -l$(RUBY_SO_NAME)
LIBRUBYARG_STATIC = -l$(RUBY_SO_NAME)-static

RUBY_EXTCONF_H = 
CFLAGS   =  -fPIC -O2 -g -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=4 -m64 -mtune=generic -fno-strict-aliasing  -fPIC $(cflags) 
INCFLAGS = -I. -I. -I/usr/lib64/ruby/1.8/x86_64-linux -I.
DEFS     = 
CPPFLAGS = -DHAVE_MYSQL_SSL_SET -DHAVE_RB_STR_SET_LEN -DHAVE_RB_THREAD_START_TIMER -DHAVE_MYSQL_H    -I/usr/include/mysql  -g -pipe -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=4 -m64 -D_GNU_SOURCE -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -fno-strict-aliasing -fwrapv -fPIC   -DUNIV_LINUX -DUNIV_LINUX
CXXFLAGS = $(CFLAGS) 
ldflags  = -L.  -rdynamic -Wl,-export-dynamic
dldflags = 
archflag = 
DLDFLAGS = $(ldflags) $(dldflags) $(archflag)
LDSHARED = $(CC) -shared
AR = ar
EXEEXT = 

RUBY_INSTALL_NAME = ruby
RUBY_SO_NAME = ruby
arch = x86_64-linux
sitearch = x86_64-linux
ruby_version = 1.8
ruby = /usr/bin/ruby
RUBY = $(ruby)
RM = rm -f
MAKEDIRS = mkdir -p
INSTALL = /usr/bin/install -c
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 644
COPY = cp

#### End of system configuration section. ####

preload = 

libpath = . $(libdir)
LIBPATH =  -L. -L$(libdir)
DEFFILE = 

CLEANFILES = mkmf.log
DISTCLEANFILES = 

extout = 
extout_prefix = 
target_prefix = /mysql
LOCAL_LIBS = 
LIBS = $(LIBRUBYARG_SHARED) -rdynamic -L/usr/lib64/mysql -lmysqlclient -lz -lcrypt -lnsl -lm -lssl -lcrypto  -lpthread -lrt -ldl -lcrypt -lm   -lc
SRCS = mysql.c
OBJS = mysql.o
TARGET = mysql_api
DLLIB = $(TARGET).so
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR = /home/lht/fabu/webistrano/vendor/bundler/ruby/1.8/gems/mysql-2.9.0/lib$(target_prefix)
RUBYARCHDIR = /home/lht/fabu/webistrano/vendor/bundler/ruby/1.8/gems/mysql-2.9.0/lib$(target_prefix)

TARGET_SO     = $(DLLIB)
CLEANLIBS     = $(TARGET).so $(TARGET).il? $(TARGET).tds $(TARGET).map
CLEANOBJS     = *.o *.a *.s[ol] *.pdb *.exp *.bak

all:		$(DLLIB)
static:		$(STATIC_LIB)

clean:
		@-$(RM) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES)

distclean:	clean
		@-$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		@-$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)

realclean:	distclean
install: install-so install-rb

install-so: $(RUBYARCHDIR)
install-so: $(RUBYARCHDIR)/$(DLLIB)
$(RUBYARCHDIR)/$(DLLIB): $(DLLIB)
	$(INSTALL_PROG) $(DLLIB) $(RUBYARCHDIR)
install-rb: pre-install-rb install-rb-default
install-rb-default: pre-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
$(RUBYARCHDIR):
	$(MAKEDIRS) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .cxx .cpp .C .o

.cc.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cxx.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cpp.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.C.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.c.o:
	$(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) -c $<

$(DLLIB): $(OBJS) Makefile
	@-$(RM) $@
	$(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



$(OBJS): ruby.h defines.h
